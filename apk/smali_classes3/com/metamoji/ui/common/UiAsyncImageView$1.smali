.class Lcom/metamoji/ui/common/UiAsyncImageView$1;
.super Ljava/lang/Object;
.source "UiAsyncImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiAsyncImageView;->abort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

.field final synthetic val$iStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiAsyncImageView;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/metamoji/ui/common/UiAsyncImageView$1;->this$0:Lcom/metamoji/ui/common/UiAsyncImageView;

    iput-object p2, p0, Lcom/metamoji/ui/common/UiAsyncImageView$1;->val$iStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiAsyncImageView$1;->val$iStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
