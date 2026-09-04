.class public Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "PoisonousMushroomCreatorDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;
    }
.end annotation


# static fields
.field static final mushroomList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private m_limitEdit:Landroid/widget/TextView;

.field private m_selectIndex:I

.field private m_tempLimitStr:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_selectIndex(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_selectIndex:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->mushroomList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 45
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_selectIndex:I

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x39ada00

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 50
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 51
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 52
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_tempLimitStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 59
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_poisonousmushroom_creator:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->mViewId:I

    .line 61
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 63
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_title:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    const-string/jumbo v1, "\u6bd2\u30ad\u30ce\u30b3\u306e\u683d\u57f9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget v0, Lcom/metamoji/noteanytime/R$id;->list:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 71
    new-instance v1, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->group_background_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 77
    sget v0, Lcom/metamoji/noteanytime/R$id;->datetime_edit:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_limitEdit:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_tempLimitStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 5

    .line 161
    sget-object v0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->mushroomList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_selectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 162
    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_limitEdit:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_tempLimitStr:Ljava/lang/String;

    const/4 v1, 0x0

    .line 168
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 169
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 170
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_tempLimitStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$id;->for_detox:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v0, :cond_3

    if-nez v2, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    .line 187
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 189
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 190
    const-string v4, "PMTYPE"

    invoke-virtual {v1, v4, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v0, "PMLM"

    invoke-static {v2}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->getDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    .line 193
    const-string v0, "ANTIDOTE"

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$2;-><init>(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 180
    :cond_3
    :goto_1
    const-string/jumbo p1, "\u6307\u5b9a\u3057\u305f\u5024\u304c\u4e0d\u6b63\u3067\u3059\u3002"

    invoke-static {p1, v1, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
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

    .line 136
    iget p4, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_selectIndex:I

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    sub-int/2addr p4, p5

    if-ltz p4, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 138
    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p4, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setActivated(Z)V

    .line 140
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 143
    iput p3, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_selectIndex:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_limitEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->m_tempLimitStr:Ljava/lang/String;

    .line 153
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
