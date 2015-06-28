module WeixinAuthorize
  module Api
    module Material

      # 获得单个素材
      # http://mp.weixin.qq.com/wiki/4/b3546879f07623cb30df9ca0e420a5d0.html
      #
      # http请求方式: POST,https调用
      # https://api.weixin.qq.com/cgi-bin/material/get_material?access_token=ACCESS_TOKEN
      def material(media_id)
        http_post('/material/get_material', {media_id: media_id})
      end

      # 获得素材总数
      # http://mp.weixin.qq.com/wiki/16/8cc64f8c189674b421bee3ed403993b8.html
      #
      # http请求方式: GET
      # https://api.weixin.qq.com/cgi-bin/material/get_materialcount?access_token=ACCESS_TOKEN
      def material_count
        http_post('/material/get_materialcount')
      end

      # 批量获取素材列表
      # http://mp.weixin.qq.com/wiki/12/2108cd7aafff7f388f41f37efa710204.html
      #
      # http请求方式: POST
      # https://api.weixin.qq.com/cgi-bin/material/batchget_material?access_token=ACCESS_TOKEN
      def materials(type = 'news', offset = 0, count = 10)
        http_post('/material/batchget_material', {type: type, offset: offset, count: count})
      end
    end
  end
end