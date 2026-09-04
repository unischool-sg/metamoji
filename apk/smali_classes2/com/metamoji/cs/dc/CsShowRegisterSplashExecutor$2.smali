.class Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$2;
.super Ljava/lang/Object;
.source "CsShowRegisterSplashExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->closeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$2;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$2;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;Z)V

    return-void
.end method
