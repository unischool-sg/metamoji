.class Lcom/metamoji/ui/dialog/UiDialog$1;
.super Ljava/lang/Object;
.source "UiDialog.java"

# interfaces
.implements Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiDialog;->safeShow(Ljava/lang/Class;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiDialog;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiDialog;Ljava/lang/String;)V
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

    .line 430
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$1;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/UiDialog$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog$1;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/dialog/UiDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
