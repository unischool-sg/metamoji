.class public Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;
.super Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;
.source "DmLibraryItemThumbnailsCacheManager.java"


# static fields
.field public static final CONTENTS_TYPE_LIBRARY_ITEM_THUMBNAILS:Ljava/lang/String; = "library_item_thumbnails"

.field private static _instance:Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    new-instance v1, Lcom/metamoji/dm/fw/contents/DmCacheContext;

    const-string v2, "library_item_thumbnails"

    invoke-direct {v1, v2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;-><init>(Lcom/metamoji/dm/fw/contents/DmCacheContext;)V

    sput-object v0, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->_instance:Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/dm/fw/contents/DmCacheContext;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;-><init>(Lcom/metamoji/dm/fw/contents/DmCacheContext;)V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->_instance:Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    return-object v0
.end method
