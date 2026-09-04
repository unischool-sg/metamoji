.class public Lcom/metamoji/ui/dialog/SelectBulletedListChar;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "SelectBulletedListChar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/SelectBulletedListChar$ListAdapter;
    }
.end annotation


# static fields
.field private static _listItems:[Ljava/lang/String;


# instance fields
.field private _selIdx:I


# direct methods
.method static bridge synthetic -$$Nest$fget_selIdx(Lcom/metamoji/ui/dialog/SelectBulletedListChar;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->_selIdx:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfget_listItems()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->_listItems:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ">"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "+"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u2022"

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->_listItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->_selIdx:I

    return-void
.end method


# virtual methods
.method public getBulletedChar()Ljava/lang/String;
    .locals 2

    .line 120
    sget-object v0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->_listItems:[Ljava/lang/String;

    iget v1, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->_selIdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 30
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_select_bulleted_list_char:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->mViewId:I

    .line 31
    sget v0, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_BULLETEDLIST:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->mTitleId:I

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p1

    .line 38
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 42
    new-instance p3, Lcom/metamoji/ui/dialog/SelectBulletedListChar$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/dialog/SelectBulletedListChar$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/SelectBulletedListChar;Landroid/content/Context;)V

    .line 43
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 109
    iget p4, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->_selIdx:I

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    sub-int/2addr p4, p5

    if-ltz p4, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 111
    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p4, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setActivated(Z)V

    .line 113
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 116
    iput p3, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->_selIdx:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 128
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    sget-object v0, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
