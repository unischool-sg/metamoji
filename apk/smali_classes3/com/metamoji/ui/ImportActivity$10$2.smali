.class Lcom/metamoji/ui/ImportActivity$10$2;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/ImportActivity$10;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity$10;Ljava/lang/Throwable;)V
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

    .line 717
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$10$2;->this$1:Lcom/metamoji/ui/ImportActivity$10;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$10$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 720
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$10$2;->this$1:Lcom/metamoji/ui/ImportActivity$10;

    iget-object v0, v0, Lcom/metamoji/ui/ImportActivity$10;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$10$2;->val$e:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mreportError(Lcom/metamoji/ui/ImportActivity;Ljava/lang/Throwable;)V

    .line 721
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$10$2;->this$1:Lcom/metamoji/ui/ImportActivity$10;

    iget-object v0, v0, Lcom/metamoji/ui/ImportActivity$10;->this$0:Lcom/metamoji/ui/ImportActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$monFailure(Lcom/metamoji/ui/ImportActivity;ZLjava/lang/String;I)V

    return-void
.end method
