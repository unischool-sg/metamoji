.class public Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "ScScoreLogListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;,
        Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;
    }
.end annotation


# instance fields
.field m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

.field m_listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    return-void
.end method

.method private actionStr(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 289
    const-string p1, ""

    return-object p1

    .line 284
    :cond_0
    const-string p1, "\u63d0\u51fa\u5dee\u3057\u623b\u3057"

    return-object p1

    .line 281
    :cond_1
    const-string p1, "\u63d0\u51fa\u53d6\u308a\u6d88\u3057"

    return-object p1

    .line 278
    :cond_2
    const-string p1, "\u63d0\u51fa"

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 338
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 339
    const-string v0, "new"

    goto :goto_0

    :cond_0
    const-string v0, "restore"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScScoreLogListDialog.onActivityCreated: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    if-nez v0, :cond_3

    .line 342
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;-><init>(Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    .line 343
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-nez p1, :cond_1

    .line 345
    const-string p1, "ScScoreLogListDialog.onActivityCreated: ListAdapter created."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 347
    :cond_1
    const-string v0, "ScScoreLogListDialog.onActivityCreated: ListAdapter restored."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 348
    const-string v0, "itemList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 351
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    check-cast v0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    if-nez p1, :cond_0

    .line 301
    const-string v0, "new"

    goto :goto_0

    :cond_0
    const-string v0, "restore"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScScoreLogListDialog.onCreateDialog: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_score_loglist:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->mViewId:I

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->mDone:Z

    .line 307
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->mCancel:Z

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->mClose:Z

    .line 309
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->mModal:Z

    .line 311
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 316
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_title:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 317
    const-string v1, "\u63d0\u51fa\u30fb\u63a1\u70b9\u306e\u64cd\u4f5c\u5c65\u6b74"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    sget v0, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listView:Landroid/widget/ListView;

    .line 320
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 366
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 367
    const-string v0, "ScScoreLogListDialog.onSaveInstanceState"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->getCount()I

    move-result v0

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 373
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :cond_0
    const-string v0, "itemList"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 378
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 168
    const-string v2, "report"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 169
    const-string v3, "changeLogList"

    const-string v4, "userName"

    const-string v5, "action"

    const-string v6, "updatorName"

    const-string v7, ""

    const-string v8, "score"

    const-string v9, "updateTime"

    if-eqz v2, :cond_3

    .line 171
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 172
    const-string v11, "opCode"

    if-eqz v10, :cond_1

    .line 173
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 174
    check-cast v12, Ljava/util/Map;

    .line 175
    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v13

    .line 176
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 177
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 178
    new-instance v15, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    invoke-direct {v15}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;-><init>()V

    .line 179
    invoke-virtual {v15, v9, v13}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-direct {v0, v12}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->actionStr(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v5, v12}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v15, v8, v7}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_0

    goto :goto_1

    :cond_0
    move-object v14, v7

    .line 182
    :goto_1
    invoke-virtual {v15, v4, v14}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v12, v0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    invoke-virtual {v12, v15}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 190
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v11

    .line 191
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    new-instance v12, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    invoke-direct {v12}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;-><init>()V

    .line 193
    invoke-virtual {v12, v9, v11}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-direct {v0, v10}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->actionStr(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v5, v10}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v12, v8, v7}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v7

    .line 196
    :goto_2
    invoke-virtual {v12, v4, v2}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    invoke-virtual {v2, v12}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->add(Ljava/lang/Object;)V

    .line 203
    :cond_3
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 206
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 207
    const-string v3, "\uff08\u30af\u30ea\u30a2\uff09"

    const-string v10, "ClearScore"

    const-string v11, "\u63a1\u70b9"

    const-string v12, "scoreString"

    if-eqz v2, :cond_6

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 209
    check-cast v15, Ljava/util/Map;

    .line 210
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v13

    .line 211
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 p1, v2

    .line 212
    invoke-static {v15, v8}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    .line 213
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 214
    new-instance v7, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    invoke-direct {v7}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;-><init>()V

    .line 215
    invoke-virtual {v7, v9, v13}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {v7, v5, v11}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v7, v8, v2}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v14, v17

    .line 219
    :goto_5
    invoke-virtual {v7, v4, v14}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    invoke-virtual {v2, v7}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->add(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    goto :goto_3

    :cond_6
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 225
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v6, v16

    .line 228
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 229
    invoke-static {v1, v8}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-wide/16 v13, 0x0

    invoke-static {v7, v13, v14}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    .line 230
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    new-instance v12, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    invoke-direct {v12}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;-><init>()V

    .line 232
    invoke-virtual {v12, v9, v2}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v12, v5, v11}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v12, v8, v3}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_8

    move-object v7, v6

    goto :goto_7

    :cond_8
    move-object/from16 v7, v17

    .line 236
    :goto_7
    invoke-virtual {v12, v4, v7}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    invoke-virtual {v1, v12}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->add(Ljava/lang/Object;)V

    .line 243
    :cond_9
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;

    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$1;

    invoke-direct {v2, v0}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$1;-><init>(Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method setItemData(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;)Landroid/view/View;
    .locals 3

    .line 140
    sget v0, Lcom/metamoji/noteanytime/R$id;->updateDateText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    const-string v1, "updateTime"

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboUtils;->dateTimeStringWithoutWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    const-string v1, "action"

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget v0, Lcom/metamoji/noteanytime/R$id;->scoreText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    const-string v1, "score"

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const-string v2, "\uff08\u30af\u30ea\u30a2\uff09"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x41100000    # 9.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41600000    # 14.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 150
    sget v0, Lcom/metamoji/noteanytime/R$id;->userNameText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    const-string v1, "userName"

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method sortDate(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 255
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 256
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 257
    check-cast p1, Ljava/util/Date;

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 262
    :cond_1
    instance-of p1, p2, Ljava/util/Date;

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
