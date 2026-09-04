.class public Lcom/metamoji/ui/dialog/FontList;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "FontList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/FontList$ListAdapter;
    }
.end annotation


# instance fields
.field private defaultFontName:Ljava/lang/String;

.field private selIdx:I

.field private selectedFontName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdefaultFontName(Lcom/metamoji/ui/dialog/FontList;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/FontList;->defaultFontName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselIdx(Lcom/metamoji/ui/dialog/FontList;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/FontList;->selIdx:I

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/metamoji/ui/dialog/FontList;->selectedFontName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/metamoji/ui/dialog/FontList;->defaultFontName:Ljava/lang/String;

    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    const-string v0, "FontListDialogParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/FontList;->selectedFontName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSelectedFontName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/metamoji/ui/dialog/FontList;->selectedFontName:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 52
    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/FontList;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 54
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_fontlist:I

    iput v0, p0, Lcom/metamoji/ui/dialog/FontList;->mViewId:I

    .line 55
    sget v0, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_Font:I

    iput v0, p0, Lcom/metamoji/ui/dialog/FontList;->mTitleId:I

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 66
    new-instance p3, Lcom/metamoji/ui/dialog/FontList$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/dialog/FontList$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/FontList;Landroid/content/Context;)V

    .line 67
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
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

    .line 177
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/metamoji/un/text/FontInfo;

    iget-object p4, p4, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/FontList;->selectedFontName:Ljava/lang/String;

    .line 180
    iget p4, p0, Lcom/metamoji/ui/dialog/FontList;->selIdx:I

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    sub-int/2addr p4, p5

    if-ltz p4, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 182
    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p4, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setActivated(Z)V

    .line 184
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 187
    iput p3, p0, Lcom/metamoji/ui/dialog/FontList;->selIdx:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "FontListDialogParams"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/FontList;->selectedFontName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontList;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 87
    sget v1, Lcom/metamoji/noteanytime/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 88
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/FontList$ListAdapter;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/FontList;->selectedFontName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->getPosition(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/FontList;->selIdx:I

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 93
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method
