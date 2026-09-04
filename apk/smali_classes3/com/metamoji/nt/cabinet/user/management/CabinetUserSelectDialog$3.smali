.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;
.super Ljava/lang/Object;
.source "CabinetUserSelectDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 331
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object p1, p1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object p1, p1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    const-string p2, ""

    iput-object p2, p1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateList()V

    .line 336
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object p1, p1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
