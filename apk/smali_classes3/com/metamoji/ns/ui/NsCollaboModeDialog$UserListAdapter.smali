.class Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NsCollaboModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ns/NsCollaboUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    const/4 p1, 0x0

    .line 73
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 74
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 80
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/NsCollaboUserInfo;

    if-nez p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->collabo_mode_bar_userlist_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    :cond_0
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    invoke-virtual {p3, p2, p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->createUserInfoCtrl(Landroid/view/View;Lcom/metamoji/ns/NsCollaboUserInfo;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
