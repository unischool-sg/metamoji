.class public Lcom/metamoji/forSchool/ui/ScScoreListDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScScoreListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COLUMN_TITLE_CLASS_NO:Ljava/lang/String; = "classNo"

.field static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field static final COLUMN_WIDTH_DCUSERNAME:F = 120.0f

.field static final COLUMN_WIDTH_SCORE:F = 70.0f

.field static final COLUMN_WIDTH_SCOREDDATE:F = 120.0f

.field static final COLUMN_WIDTH_SCOREDDCUSERNAME:F = 100.0f

.field static final COLUMN_WIDTH_SUBMITTEDDATE:F = 120.0f

.field static final COUPLEDCOLUMN_ROOMID:Ljava/lang/String; = "roomId"

.field private static s_instance:Lcom/metamoji/forSchool/ui/ScScoreListDialog;


# instance fields
.field public EditorMode:Z

.field m_columnArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_coupledColumnArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_csvExporting:Z

.field m_isAutoReload:Z

.field m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

.field m_originalDataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_sortColumnIndex:I

.field m_sortIsDesending:Z


# direct methods
.method static bridge synthetic -$$Nest$mhandleContextMenuSetScore(Lcom/metamoji/forSchool/ui/ScScoreListDialog;IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->handleContextMenuSetScore(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleContextMenuStartPersonalMode(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->handleContextMenuStartPersonalMode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 420
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->EditorMode:Z

    .line 1051
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_csvExporting:Z

    return-void
.end method

.method private autoReload()V
    .locals 1

    .line 982
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_isAutoReload:Z

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->handleReloadButtonTap()V

    :cond_0
    return-void
.end method

.method private createRecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    const/4 p3, 0x0

    .line 288
    invoke-direct {p0, v0, p3}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->setupRecord(Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private finalizeDialog()V
    .locals 3

    .line 679
    sget-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->s_instance:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 682
    sput-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->s_instance:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    .line 685
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 686
    const-string v1, "forSchoolScoreListAutoReload"

    iget-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_isAutoReload:Z

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    return-void
.end method

.method private findRecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 299
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 300
    const-string v3, "userId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-static {}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->values()[Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    move-result-object p2

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    .line 303
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    div-int/2addr p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    const/4 p2, 0x0

    .line 305
    invoke-direct {p0, v1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->setupRecord(Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 312
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->createRecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private handleContextMenuSetScore(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 1189
    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1195
    :cond_0
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    .line 1199
    new-instance v4, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;

    invoke-direct {v4, p0, p1, p3}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;II)V

    .line 1215
    iget-boolean v3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->EditorMode:Z

    const/4 v5, 0x0

    move-object v1, p4

    move-object v2, p5

    invoke-static/range {v0 .. v5}, Lcom/metamoji/forSchool/ScSchoolCommand;->executeSetScore(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;Z)V

    return-void
.end method

.method private handleContextMenuStartPersonalMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1226
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1228
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->dismiss()V

    .line 1251
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/forSchool/ScSchoolManager;->startPersonalMode(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static reloadData()V
    .locals 1

    .line 104
    sget-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->s_instance:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->autoReload()V

    :cond_0
    return-void
.end method

.method private setupRecord(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 319
    const-string v0, "score"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 320
    const-string v3, "report"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 324
    const-string v3, "updateTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 326
    invoke-static {v2, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 329
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    if-eqz p2, :cond_5

    .line 336
    const-string v0, "opCode"

    invoke-static {p2, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 339
    :cond_4
    const-string v0, "latestReportTime"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p2

    goto :goto_4

    :cond_5
    move-object p2, v1

    .line 342
    :goto_4
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6

    .line 345
    const-string p2, "updator"

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object p2, v1

    :goto_5
    if-eqz v2, :cond_7

    .line 346
    const-string v0, "updatorName"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 347
    :cond_7
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$9;

    invoke-direct {v0, p0, p2, v1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$9;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 673
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->finalizeDialog()V

    .line 674
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->dismiss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->finalizeDialog()V

    .line 668
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method extractCSVTextWithLineSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1090
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->getCoupledColumnInfoDicArray()Ljava/util/List;

    move-result-object v0

    .line 1091
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->getColumnInfoDicArray()Ljava/util/List;

    move-result-object v1

    .line 1092
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->getDataArray()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1093
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1098
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1099
    new-instance v6, Lcom/metamoji/forSchool/ui/ScScoreListDialog$17;

    invoke-direct {v6, p0, v5}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$17;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/StringBuffer;)V

    .line 1105
    new-instance v7, Lcom/metamoji/ce/io/CeCsvComposer;

    invoke-direct {v7}, Lcom/metamoji/ce/io/CeCsvComposer;-><init>()V

    .line 1106
    invoke-virtual {v7, v6}, Lcom/metamoji/ce/io/CeCsvComposer;->setHandler(Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;)V

    const/16 v6, 0x2c

    .line 1107
    invoke-virtual {v7, v6}, Lcom/metamoji/ce/io/CeCsvComposer;->setColumnSeparator(C)V

    .line 1108
    invoke-virtual {v7, p1}, Lcom/metamoji/ce/io/CeCsvComposer;->setLineSeparator(Ljava/lang/String;)V

    .line 1111
    const-string p1, "title"

    const-string v6, ""

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 1112
    invoke-virtual {v7}, Lcom/metamoji/ce/io/CeCsvComposer;->startRow()V

    .line 1114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v8, v3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_3

    .line 1116
    invoke-virtual {v7, v6}, Lcom/metamoji/ce/io/CeCsvComposer;->cell(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1120
    :cond_3
    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1122
    :try_start_0
    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    move-object v10, v6

    .line 1126
    :goto_1
    invoke-virtual {v7, v10}, Lcom/metamoji/ce/io/CeCsvComposer;->cell(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    .line 1129
    const-string v10, "span"

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1131
    :try_start_1
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_5
    move v9, v3

    :goto_2
    move v10, v3

    :goto_3
    if-ge v10, v9, :cond_7

    if-lt v8, v4, :cond_6

    goto :goto_4

    .line 1139
    :cond_6
    invoke-virtual {v7, v6}, Lcom/metamoji/ce/io/CeCsvComposer;->cell(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-lt v8, v4, :cond_2

    .line 1147
    :cond_8
    invoke-virtual {v7}, Lcom/metamoji/ce/io/CeCsvComposer;->endRow()V

    .line 1151
    :cond_9
    invoke-virtual {v7}, Lcom/metamoji/ce/io/CeCsvComposer;->startRow()V

    .line 1152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1154
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1156
    :try_start_2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    :cond_a
    move-object v1, v6

    .line 1160
    :goto_6
    invoke-virtual {v7, v1}, Lcom/metamoji/ce/io/CeCsvComposer;->cell(Ljava/lang/String;)V

    goto :goto_5

    .line 1162
    :cond_b
    invoke-virtual {v7}, Lcom/metamoji/ce/io/CeCsvComposer;->endRow()V

    if-eqz v2, :cond_d

    .line 1166
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1168
    invoke-virtual {v7}, Lcom/metamoji/ce/io/CeCsvComposer;->startRow()V

    move v2, v3

    :goto_8
    if-ge v2, v1, :cond_c

    .line 1170
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/metamoji/ce/io/CeCsvComposer;->cell(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1172
    :cond_c
    invoke-virtual {v7}, Lcom/metamoji/ce/io/CeCsvComposer;->endRow()V

    goto :goto_7

    .line 1176
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getStringRecord(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 731
    :goto_0
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 733
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_0

    return-object v0

    .line 739
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 742
    :try_start_0
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "type"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    invoke-virtual {v4}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->ordinal()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 777
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 770
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 771
    const-string v4, "updatorName"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 764
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 758
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 751
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 752
    const-string v4, "userName"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 786
    :goto_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 788
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 789
    :cond_6
    instance-of v4, v3, Ljava/util/Date;

    if-eqz v4, :cond_7

    .line 791
    check-cast v3, Ljava/util/Date;

    invoke-static {v3}, Lcom/metamoji/ns/NsCollaboUtils;->dateTimeStringWithoutWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 792
    :cond_7
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 794
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 797
    :cond_8
    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_9
    return-object v0
.end method

.method getStringRowDataArray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 721
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->getStringRecord(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method handleCSVButtonTap(Lcom/metamoji/ui/common/UiButton;)V
    .locals 6

    .line 1053
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_csvExporting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1056
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 1057
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_csvExporting:Z

    .line 1059
    const-string v0, "\r\n"

    .line 1060
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->extractCSVTextWithLineSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1062
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1063
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1064
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORELISTDLG_CSV_FILENAME_FORMAT:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 1066
    const-string v4, "%@"

    const-string v5, "%s%s"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1067
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".csv"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1069
    const-string v2, "UTF-8"

    .line 1071
    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/nt/NtShare;->saveAsCSVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method handleReloadButtonTap()V
    .locals 7

    .line 991
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->EditorMode:Z

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 998
    sget v0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 1003
    :cond_1
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    .line 1004
    iget-boolean v3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    .line 1006
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->selectedRowIndex()I

    move-result v4

    .line 1007
    const-string v5, "userId"

    if-ltz v4, :cond_2

    .line 1008
    iget-object v6, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 1009
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1010
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 1012
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1018
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getScoreTargetUserList()Ljava/util/List;

    move-result-object v4

    .line 1019
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreList()Ljava/util/List;

    move-result-object v6

    .line 1020
    invoke-virtual {p0, v6, v4}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->parseScoreList(Ljava/util/List;Ljava/util/List;)Z

    .line 1023
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    .line 1024
    iput-boolean v3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    .line 1025
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {v4, v0, v3}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setSortColumnIndex(IZ)V

    .line 1026
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortOriginalDataArray()V

    if-eqz v1, :cond_4

    move v0, v2

    .line 1031
    :goto_0
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1032
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1033
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1034
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 1035
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    .line 1042
    :goto_1
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->getStringRowDataArray()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setDataArray(Ljava/util/List;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 426
    sput-object p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->s_instance:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    const/4 v0, 0x1

    .line 429
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->setModal(Z)V

    .line 431
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_school_score_list:I

    iput v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->mViewId:I

    .line 432
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORELISTDLG_TITLE:I

    iput v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->mTitleId:I

    .line 433
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->mClose:Z

    const/4 v1, 0x0

    .line 434
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->mDone:Z

    .line 435
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->mCancel:Z

    .line 436
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->mBack:Z

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 439
    sget p2, Lcom/metamoji/noteanytime/R$id;->list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    .line 442
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p2

    .line 443
    const-string v2, "forSchoolScoreListAutoReload"

    invoke-virtual {p2, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_isAutoReload:Z

    .line 446
    sget p2, Lcom/metamoji/noteanytime/R$id;->csv_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_0

    .line 448
    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog$11;

    invoke-direct {v2, p0, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$11;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Lcom/metamoji/ui/common/UiButton;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->autoReloadSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p2, :cond_1

    .line 458
    iget-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_isAutoReload:Z

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 459
    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog$12;

    invoke-direct {v2, p0, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$12;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Lcom/metamoji/ui/common/UiSwitch;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->reload_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_2

    .line 469
    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog$13;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$13;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    :cond_2
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->EditorMode:Z

    if-eqz p2, :cond_3

    .line 478
    sget p2, Lcom/metamoji/noteanytime/R$id;->reload_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 480
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p3, :cond_6

    .line 486
    const-string p2, "sortColumnIndex"

    const/4 v2, -0x1

    invoke-virtual {p3, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    .line 487
    const-string p2, "sortIsDesending"

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    .line 488
    const-string p2, "coupledColumnArray"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 489
    array-length v0, p2

    if-lez v0, :cond_4

    .line 490
    aget-object p2, p2, v1

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    .line 492
    :cond_4
    const-string p2, "columnArray"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 493
    array-length v0, p2

    if-lez v0, :cond_5

    .line 494
    aget-object p2, p2, v1

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    .line 496
    :cond_5
    const-string p2, "dataArray"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_6

    .line 497
    array-length p3, p2

    if-lez p3, :cond_6

    .line 498
    aget-object p2, p2, v1

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    .line 502
    :cond_6
    new-instance p2, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;

    invoke-direct {p2, p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V

    .line 518
    new-instance p3, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Landroid/view/View;)V

    .line 649
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {v0, p2}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setSortAction(Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewSortAction;)V

    .line 650
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setCellTapAction(Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;)V

    .line 651
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    invoke-virtual {p2, p3, v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setColumnInfoDicArray(Ljava/util/List;Ljava/util/List;)V

    .line 652
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget p3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    invoke-virtual {p2, p3, v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setSortColumnIndex(IZ)V

    .line 653
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortOriginalDataArray()V

    .line 654
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->getStringRowDataArray()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setDataArray(Ljava/util/List;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 661
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->finalizeDialog()V

    .line 662
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 691
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->csv_btn:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 692
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_csvExporting:Z

    .line 693
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onPause()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 701
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 703
    sget-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 704
    const-string v0, "sortColumnIndex"

    iget v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 705
    const-string v0, "sortIsDesending"

    iget-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 706
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "coupledColumnArray"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 707
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "columnArray"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 708
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "dataArray"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public parseScoreList(Ljava/util/List;Ljava/util/List;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    .line 119
    :cond_0
    iput v7, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    .line 120
    iput-boolean v7, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    .line 127
    new-instance v8, Lcom/metamoji/forSchool/ui/ScScoreListDialog$1;

    invoke-direct {v8, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$1;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V

    .line 132
    new-instance v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;

    invoke-direct {v1, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$2;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V

    .line 137
    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog$3;

    invoke-direct {v2, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$3;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V

    .line 142
    new-instance v3, Lcom/metamoji/forSchool/ui/ScScoreListDialog$4;

    invoke-direct {v3, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$4;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V

    .line 147
    new-instance v4, Lcom/metamoji/forSchool/ui/ScScoreListDialog$5;

    invoke-direct {v4, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$5;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V

    .line 153
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 159
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    move v11, v7

    .line 160
    :goto_0
    const-string v12, "loginName"

    const-string v13, "classNo"

    const-string v14, "userName"

    const-string v15, "userId"

    const/4 v1, 0x0

    if-eqz v11, :cond_4

    .line 162
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 166
    check-cast v2, Ljava/util/Map;

    .line 167
    invoke-static {v2, v15}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    invoke-static {v2, v14}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    invoke-static {v2, v13}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 170
    invoke-static {v2, v12}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v17, v1

    const/4 v1, -0x1

    move-object v10, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    move-object/from16 v10, v17

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->createRecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-object v1, v10

    goto :goto_1

    :cond_4
    move-object v10, v1

    const/4 v1, -0x1

    move v2, v7

    .line 180
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 181
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_5

    :goto_3
    goto/16 :goto_7

    .line 187
    :cond_5
    const-string v4, "status"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "validFlag"

    .line 188
    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v4

    const v5, 0x800c

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_6

    goto/16 :goto_7

    .line 192
    :cond_6
    const-string v4, "roomId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 193
    const-string v5, "title"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 194
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_d

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    if-nez v11, :cond_8

    if-nez v1, :cond_8

    move/from16 v16, v7

    .line 202
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move/from16 v16, v7

    .line 207
    :goto_4
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_columnArray:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    new-instance v10, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;

    invoke-direct {v10, v0, v5, v9, v4}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v4, "userList"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_c

    .line 214
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 215
    move-object v10, v3

    check-cast v10, Ljava/util/Map;

    .line 216
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 217
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 218
    invoke-static {v10, v13}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 219
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 220
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_a

    goto :goto_5

    :cond_a
    if-nez v11, :cond_b

    if-nez v1, :cond_b

    move-object/from16 v21, v19

    move/from16 v19, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v21

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->createRecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    goto :goto_6

    :cond_b
    move-object/from16 v21, v19

    move/from16 v19, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v21

    move-object/from16 v0, p0

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->findRecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 233
    :goto_6
    invoke-direct {v0, v2, v10}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->setupRecord(Ljava/util/List;Ljava/util/Map;)V

    move/from16 v2, v19

    goto :goto_5

    :cond_c
    move/from16 v19, v2

    goto :goto_8

    :cond_d
    :goto_7
    move/from16 v19, v2

    move/from16 v16, v7

    :goto_8
    add-int/lit8 v2, v19, 0x1

    move/from16 v7, v16

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_e
    move/from16 v16, v7

    if-gez v1, :cond_10

    .line 239
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 241
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORELISTDLG_MSG_NO_TARGETDOCUMENT:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    goto :goto_9

    .line 244
    :cond_f
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 245
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORELISTDLG_MSG_NO_TARGETDOCUMENT:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/metamoji/forSchool/ui/ScScoreListDialog$7;

    invoke-direct {v3, v0, v1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$7;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 254
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_9
    return v16

    :cond_10
    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v11, 0x1

    if-le v1, v2, :cond_12

    .line 263
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 264
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v4, v5

    :goto_b
    if-ge v4, v1, :cond_11

    const/4 v10, 0x0

    .line 266
    invoke-direct {v0, v3, v10}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->setupRecord(Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_11
    const/16 v18, 0x1

    goto :goto_a

    :cond_12
    const/16 v18, 0x1

    return v18
.end method

.method sortDate(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 941
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 942
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 943
    check-cast p1, Ljava/util/Date;

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 948
    :cond_1
    instance-of p1, p2, Ljava/util/Date;

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method sortNumber(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 960
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 961
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 962
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 967
    :cond_1
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method sortOriginalDataArray()V
    .locals 3

    .line 811
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    if-gez v0, :cond_0

    return-void

    .line 816
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 817
    const-string v0, "MMJAppMonitorSortOrder"

    const-string v1, "userid"

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 820
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$16;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Z)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method sortString(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 922
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 923
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 924
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 929
    :cond_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method updateScore(IILjava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_1

    .line 361
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 367
    :try_start_0
    const-string v4, "span"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_1
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    if-lt v2, p2, :cond_2

    return-object v1

    .line 379
    :cond_2
    const-string p2, "score"

    if-eqz p3, :cond_3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    if-eqz p3, :cond_4

    .line 380
    const-string v4, "report"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    goto :goto_3

    :cond_4
    move-object p3, v1

    :goto_3
    if-eqz v3, :cond_5

    .line 384
    const-string v4, "updateTime"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 386
    invoke-static {v3, p2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-wide/16 v5, 0x0

    invoke-static {p2, v5, v6}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 v5, v2, 0x1

    .line 387
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v2, 0x1

    .line 389
    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz p3, :cond_8

    .line 396
    const-string p2, "opCode"

    invoke-static {p3, p2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 399
    :cond_7
    const-string p2, "latestReportTime"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p2

    goto :goto_6

    :cond_8
    move-object p2, v1

    :goto_6
    add-int/lit8 p3, v5, 0x1

    .line 402
    invoke-interface {p1, v5, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 405
    const-string p2, "updator"

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object p2, v1

    :goto_7
    if-eqz v3, :cond_a

    .line 406
    const-string v0, "updatorName"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_a
    add-int/lit8 v5, v5, 0x2

    .line 407
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$10;

    invoke-direct {v0, p0, p2, v1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$10;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-interface {p1, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->getStringRecord(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
