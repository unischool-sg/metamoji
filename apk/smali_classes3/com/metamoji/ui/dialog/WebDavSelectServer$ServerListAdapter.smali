.class Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebDavSelectServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/WebDavSelectServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ex/webdav/WebDAVInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectListener:Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;

.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSelectListener(Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;)Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->mSelectListener:Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;Landroid/content/Context;)V
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

    .line 52
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    const/4 p1, 0x0

    .line 53
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->mSelectListener:Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;

    .line 54
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->listitem_webdav_server:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ex/webdav/WebDAVInfo;

    .line 66
    invoke-virtual {p1}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getRoot()Ljava/lang/String;

    move-result-object p3

    .line 68
    sget v0, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    new-instance v1, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 86
    new-instance v0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$2;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget p1, Lcom/metamoji/noteanytime/R$id;->name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 97
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setServerSelectedListener(Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->mSelectListener:Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;

    return-void
.end method
