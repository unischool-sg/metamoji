.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$11;
.super Ljava/lang/Object;
.source "ScScoreListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

.field final synthetic val$csvBtn:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Lcom/metamoji/ui/common/UiButton;)V
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

    .line 448
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$11;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$11;->val$csvBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 451
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$11;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$11;->val$csvBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->handleCSVButtonTap(Lcom/metamoji/ui/common/UiButton;)V

    return-void
.end method
