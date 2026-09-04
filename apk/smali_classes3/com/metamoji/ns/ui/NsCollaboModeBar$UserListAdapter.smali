.class Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NsCollaboModeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;
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

.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;Landroid/content/Context;)V
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

    .line 84
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    const/4 p1, 0x0

    .line 85
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 86
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/NsCollaboUserInfo;

    if-nez p2, :cond_0

    .line 95
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->collabo_mode_bar_userlist_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    :cond_0
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-virtual {p3, p2, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->createUserInfoCtrl(Landroid/view/View;Lcom/metamoji/ns/NsCollaboUserInfo;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
