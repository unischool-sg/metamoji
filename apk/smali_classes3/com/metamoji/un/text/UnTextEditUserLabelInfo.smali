.class public Lcom/metamoji/un/text/UnTextEditUserLabelInfo;
.super Ljava/lang/Object;
.source "UnTextEditUserLabelInfo.java"


# instance fields
.field private _labels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _popupLabel:Landroid/view/View;

.field private _targetTextUnit:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/un/text/UnTextUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_popupLabel(Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_popupLabel:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_targetTextUnit:Ljava/lang/ref/WeakReference;

    .line 31
    iput-object v1, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    .line 32
    iput-object v1, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_popupLabel:Landroid/view/View;

    return-void
.end method

.method private containsEditUserLabel(Ljava/lang/String;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addLabel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 71
    invoke-direct {p0, p2}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->containsEditUserLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public checkVisibleLayer()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getTargetTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_popupLabel:Landroid/view/View;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 153
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/un/text/UnTextEditUserLabelInfo$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo$1;-><init>(Lcom/metamoji/un/text/UnTextEditUserLabelInfo;I)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public getDispLabel()Ljava/lang/String;
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const-string v0, "***"

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getEditUserCount()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPopupLabel()Landroid/view/View;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_popupLabel:Landroid/view/View;

    return-object v0
.end method

.method public getTargetTextUnit()Lcom/metamoji/un/text/UnTextUnit;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_targetTextUnit:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    return-object v0
.end method

.method public removeLabel(Ljava/lang/String;)Z
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->containsEditUserLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_labels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPopupLabel(Landroid/view/View;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_popupLabel:Landroid/view/View;

    return-void
.end method

.method public setTargetTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_targetTextUnit:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->_targetTextUnit:Ljava/lang/ref/WeakReference;

    return-void
.end method
