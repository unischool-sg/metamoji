.class public Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "SelectBulletedListNumberedKind.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$ListAdapter;,
        Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;
    }
.end annotation


# static fields
.field private static _listItems:[Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;


# instance fields
.field private _selIdx:I


# direct methods
.method static bridge synthetic -$$Nest$fget_selIdx(Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->_selIdx:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfget_listItems()[Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;
    .locals 1

    sget-object v0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->_listItems:[Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x5

    .line 62
    new-array v0, v0, [Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    new-instance v1, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsAndPeriod:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "1."

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "2."

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "3."

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-direct {v1, v2, v4}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;[Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithRightParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "1)"

    aput-object v5, v4, v6

    const-string v5, "2)"

    aput-object v5, v4, v7

    const-string v5, "3)"

    aput-object v5, v4, v8

    invoke-direct {v1, v2, v4}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;[Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "(1)"

    aput-object v5, v4, v6

    const-string v5, "(2)"

    aput-object v5, v4, v7

    const-string v5, "(3)"

    aput-object v5, v4, v8

    invoke-direct {v1, v2, v4}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;[Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->AlphabetCapital:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "A."

    aput-object v5, v4, v6

    const-string v5, "B."

    aput-object v5, v4, v7

    const-string v5, "C."

    aput-object v5, v4, v8

    invoke-direct {v1, v2, v4}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;[Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->Alphabet:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "a."

    aput-object v4, v3, v6

    const-string v4, "b."

    aput-object v4, v3, v7

    const-string v4, "c."

    aput-object v4, v3, v8

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;[Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->_listItems:[Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->_selIdx:I

    return-void
.end method


# virtual methods
.method public getNumberedListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;
    .locals 2

    .line 136
    sget-object v0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->_listItems:[Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    iget v1, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->_selIdx:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 31
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_select_bulleted_list_numbered_kind:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->mViewId:I

    .line 32
    sget v0, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_NUMBEREDLIST:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->mTitleId:I

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p1

    .line 39
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 43
    new-instance p3, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;Landroid/content/Context;)V

    .line 44
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
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

    .line 125
    iget p4, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->_selIdx:I

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    sub-int/2addr p4, p5

    if-ltz p4, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 127
    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p4, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setActivated(Z)V

    .line 129
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 132
    iput p3, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->_selIdx:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    sget-object v0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
