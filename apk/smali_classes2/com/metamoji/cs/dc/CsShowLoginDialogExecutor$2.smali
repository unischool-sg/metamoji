.class Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$2;
.super Ljava/lang/Object;
.source "CsShowLoginDialogExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->closeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$2;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$2;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fputloginActivityOpened(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Ljava/lang/Boolean;)V

    return-void
.end method
