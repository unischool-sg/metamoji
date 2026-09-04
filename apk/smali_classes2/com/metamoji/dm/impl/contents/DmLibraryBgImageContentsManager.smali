.class public Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;
.super Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;
.source "DmLibraryBgImageContentsManager.java"


# static fields
.field public static final CONTENTS_TYPE_BGIMAGE:Ljava/lang/String; = "library_bgimage"

.field private static _instance:Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    new-instance v1, Lcom/metamoji/dm/fw/contents/DmContentsContext;

    const-string v2, "library_bgimage"

    invoke-direct {v1, v2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;-><init>(Lcom/metamoji/dm/fw/contents/DmContentsContext;)V

    sput-object v0, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->_instance:Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/dm/fw/contents/DmContentsContext;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;-><init>(Lcom/metamoji/dm/fw/contents/DmContentsContext;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;
    .locals 2

    const-class v0, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->_instance:Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
