.class Lcom/metamoji/forSchool/ui/ScGroupListDialog$2;
.super Ljava/lang/Object;
.source "ScGroupListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScGroupListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$2;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 255
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$2;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->-$$Nest$mhandleDeleteButtonTap(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    return-void
.end method
