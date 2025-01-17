enum NetworkRoutes {
  LOGIN,
  REGISTER,
  UPDATE_IMAGE,
  UPDATE_USER,
  BUILD_HOME,
  GET_BLOGS,
  GET_SEARCH_BLOGS,
  GET_LAST_UPDATED_BLOGS,
  GET_BLOG_BY_IDS,
  GET_BLOG_BY_USER_ID,
  GET_BLOG,
  GET_BLOG_COMMENTS,
  LIKE_COMMENT,
  LIKE_BLOG,
  SAVE_COMMENT,
  GET_CATEGORY,
  GET_TOPICS,
  SAVE_TOPICS,
  FRIENDS,
  GAME,
  SLIDER,
  GET_MESSAGES,
}

extension NetwrokRoutesString on NetworkRoutes {
  String get rawValue {
    switch (this) {
      case NetworkRoutes.LOGIN:
        return 'auth/signin';

      case NetworkRoutes.REGISTER:
        return 'auth/signup';

      case NetworkRoutes.UPDATE_IMAGE:
        return 'users/updateUserImage';

      case NetworkRoutes.UPDATE_USER:
        return 'users/updateUser';

      case NetworkRoutes.BUILD_HOME:
        return 'house';

      case NetworkRoutes.GET_BLOGS:
        return 'blog/listBlog';

      case NetworkRoutes.GET_SEARCH_BLOGS:
        return 'blog/listSearchBlog';

      case NetworkRoutes.GET_LAST_UPDATED_BLOGS:
        return 'blog/listLastUpdatedBlog';

      case NetworkRoutes.GET_BLOG_BY_IDS:
        return 'blog/listBlogByIds';

      case NetworkRoutes.GET_BLOG_BY_USER_ID:
        return 'blog/listBlogByUserId';

      case NetworkRoutes.GET_BLOG:
        return 'blog/getBlog';

      case NetworkRoutes.GET_TOPICS:
        return 'blog/listTopics';

      case NetworkRoutes.SAVE_TOPICS:
        return 'users/saveTopics';

      case NetworkRoutes.SAVE_COMMENT:
        return 'comment/saveComment';

      case NetworkRoutes.LIKE_COMMENT:
        return 'comment/likeComment';

      case NetworkRoutes.LIKE_BLOG:
        return 'blog/likeBlog';

      case NetworkRoutes.GET_BLOG_COMMENTS:
        return 'comment/listComments';

      case NetworkRoutes.FRIENDS:
        return 'friends';

      case NetworkRoutes.GAME:
        return 'games';

      case NetworkRoutes.SLIDER:
        return 'slider';
      default:
        throw Exception('Routes Not FouND');
    }
  }
}
