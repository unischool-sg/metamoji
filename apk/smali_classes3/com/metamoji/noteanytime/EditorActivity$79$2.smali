.class Lcom/metamoji/noteanytime/EditorActivity$79$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$79;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

.field final synthetic val$dlg:Lcom/metamoji/ex/SendDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$79;Lcom/metamoji/ex/SendDialog;)V
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

    .line 8691
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$2;->this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$2;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8694
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$2;->val$dlg:Lcom/metamoji/ex/SendDialog;

    const-string v1, "SendDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ex/SendDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
