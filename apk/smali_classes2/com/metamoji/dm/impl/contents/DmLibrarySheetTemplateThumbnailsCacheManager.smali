.class public Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;
.super Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;
.source "DmLibrarySheetTemplateThumbnailsCacheManager.java"


# static fields
.field public static final CONTENTS_TYPE_LIBRARY_SHEETTEMPLATE_THUMBNAILS:Ljava/lang/String; = "library_sheettemplate_thumbnails"

.field private static _instance:Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    new-instance v1, Lcom/metamoji/dm/fw/contents/DmCacheContext;

    const-string v2, "library_sheettemplate_thumbnails"

    invoke-direct {v1, v2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;-><init>(Lcom/metamoji/dm/fw/contents/DmCacheContext;)V

    sput-object v0, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->_instance:Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/dm/fw/contents/DmCacheContext;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;-><init>(Lcom/metamoji/dm/fw/contents/DmCacheContext;)V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->_instance:Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    return-object v0
.end method
