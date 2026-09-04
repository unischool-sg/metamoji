.class public Lcom/metamoji/noteanytime/ActionBar;
.super Landroidx/fragment/app/Fragment;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;
    }
.end annotation


# instance fields
.field public onStatusChangedListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mfireStatusChanged(Lcom/metamoji/noteanytime/ActionBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/ActionBar;->fireStatusChanged(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 61
    new-instance v0, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v0}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/noteanytime/ActionBar;->onStatusChangedListener:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method

.method private fireStatusChanged(Z)V
    .locals 3

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBar;->onStatusChangedListener:Lcom/metamoji/cm/CmEventListener;

    new-instance v1, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;-><init>(Lcom/metamoji/noteanytime/ActionBar;ZLcom/metamoji/noteanytime/ActionBar-IA;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 110
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 67
    sget p3, Lcom/metamoji/noteanytime/R$layout;->editor_actionbar:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/ActionBarRootLayout;

    .line 68
    iget-object p2, p1, Lcom/metamoji/noteanytime/ActionBarRootLayout;->onHeightChangedListener:Lcom/metamoji/cm/CmEventListener;

    new-instance p3, Lcom/metamoji/noteanytime/ActionBar$1;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/noteanytime/ActionBar$1;-><init>(Lcom/metamoji/noteanytime/ActionBar;Lcom/metamoji/noteanytime/ActionBarRootLayout;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 83
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->isSimpleUiMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    sget p2, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_view:I

    invoke-virtual {p1, p2}, Lcom/metamoji/noteanytime/ActionBarRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    sget p2, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_laser:I

    invoke-virtual {p1, p2}, Lcom/metamoji/noteanytime/ActionBarRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 87
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    sget p2, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_text:I

    invoke-virtual {p1, p2}, Lcom/metamoji/noteanytime/ActionBarRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    sget p2, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_arrange:I

    invoke-virtual {p1, p2}, Lcom/metamoji/noteanytime/ActionBarRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 103
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/ActionBar;->fireStatusChanged(Z)V

    return-void
.end method
