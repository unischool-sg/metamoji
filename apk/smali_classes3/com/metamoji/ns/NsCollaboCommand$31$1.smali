.class Lcom/metamoji/ns/NsCollaboCommand$31$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$31;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$31;

.field final synthetic val$prevText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$31;Ljava/lang/String;)V
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

    .line 2649
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$31$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$31;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$31$1;->val$prevText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    .line 2652
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$31$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$31;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboCommand$31;->val$startupActivity:Landroidx/fragment/app/FragmentActivity;

    check-cast p1, Lcom/metamoji/noteanytime/StartupActivity;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$31$1;->val$prevText:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Lcom/metamoji/noteanytime/StartupActivity;->showInfoLabelTextOnMainThread(Ljava/lang/String;)V

    return-void
.end method
