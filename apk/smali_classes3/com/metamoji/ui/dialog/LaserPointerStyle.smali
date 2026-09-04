.class public Lcom/metamoji/ui/dialog/LaserPointerStyle;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "LaserPointerStyle.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/metamoji/ui/dialog/LaserPointerColor$Listener;
.implements Lcom/metamoji/ui/dialog/LaserPointerThickness$Listener;


# instance fields
.field private _color:I

.field private _thickness:F

.field private checkedId:I

.field private contentColor:Lcom/metamoji/ui/dialog/LaserPointerColor;

.field private contentThickness:Lcom/metamoji/ui/dialog/LaserPointerThickness;

.field private titleId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 34
    sget v0, Lcom/metamoji/noteanytime/R$string;->Laser_Pointer_Settings_Dialog_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->titleId:I

    .line 36
    sget v0, Lcom/metamoji/noteanytime/R$id;->laserpointer_color:I

    iput v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->checkedId:I

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->mDoneOnTouchOutsize:Z

    return-void
.end method


# virtual methods
.method public ColorChanged(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_color:I

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 127
    iput p2, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->checkedId:I

    .line 130
    sget p1, Lcom/metamoji/noteanytime/R$id;->laserpointer_color:I

    if-ne p2, p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentColor:Lcom/metamoji/ui/dialog/LaserPointerColor;

    goto :goto_0

    .line 132
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->laserpointer_thickness:I

    if-ne p2, p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentThickness:Lcom/metamoji/ui/dialog/LaserPointerThickness;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/LaserPointerStyle;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v0, Lcom/metamoji/noteanytime/R$id;->container:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 136
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 137
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 63
    const-string v0, "color"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_color:I

    .line 64
    const-string/jumbo v0, "thickness"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_thickness:F

    .line 67
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_laserpointer:I

    iput v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->mViewId:I

    .line 68
    iget v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->titleId:I

    iput v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->mTitleId:I

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 76
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 77
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 79
    new-instance p2, Lcom/metamoji/ui/dialog/LaserPointerColor;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/LaserPointerStyle;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/LaserPointerStyle;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/metamoji/ui/dialog/LaserPointerColor;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentColor:Lcom/metamoji/ui/dialog/LaserPointerColor;

    .line 80
    new-instance p2, Lcom/metamoji/ui/dialog/LaserPointerThickness;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/LaserPointerStyle;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/metamoji/ui/dialog/LaserPointerThickness;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentThickness:Lcom/metamoji/ui/dialog/LaserPointerThickness;

    .line 82
    iget-object p2, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentColor:Lcom/metamoji/ui/dialog/LaserPointerColor;

    invoke-virtual {p2, p0}, Lcom/metamoji/ui/dialog/LaserPointerColor;->setListener(Lcom/metamoji/ui/dialog/LaserPointerColor$Listener;)V

    .line 83
    iget-object p2, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentThickness:Lcom/metamoji/ui/dialog/LaserPointerThickness;

    invoke-virtual {p2, p0}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->setListener(Lcom/metamoji/ui/dialog/LaserPointerThickness$Listener;)V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 110
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 111
    const-string v1, "LaserPointerColor"

    iget v2, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_color:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 112
    const-string v1, "LaserPointerThickness"

    iget v2, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_thickness:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    .line 115
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_LASER_POINTER_COLOR_CHANGED:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 120
    iget-object v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentColor:Lcom/metamoji/ui/dialog/LaserPointerColor;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/LaserPointerColor;->saveColorHstory()V

    .line 122
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 92
    const-string v0, "color"

    iget v1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_color:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string/jumbo v0, "thickness"

    iget v1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_thickness:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/LaserPointerStyle;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->radiogroup:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 101
    iget v1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->checkedId:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentColor:Lcom/metamoji/ui/dialog/LaserPointerColor;

    iget v1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_color:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/LaserPointerColor;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->contentThickness:Lcom/metamoji/ui/dialog/LaserPointerThickness;

    iget v1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_thickness:F

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->setThickness(F)V

    .line 106
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method

.method public set_color(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_color:I

    return-void
.end method

.method public set_thickness(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_thickness:F

    return-void
.end method

.method public thicknessChanged(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/metamoji/ui/dialog/LaserPointerStyle;->_thickness:F

    return-void
.end method
