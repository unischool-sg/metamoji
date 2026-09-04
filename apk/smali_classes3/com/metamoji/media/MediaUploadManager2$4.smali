.class Lcom/metamoji/media/MediaUploadManager2$4;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2;->registTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager2;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$4;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$4;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/MediaUploadManager2;->uploadTitles(Z)Z

    return-void
.end method
