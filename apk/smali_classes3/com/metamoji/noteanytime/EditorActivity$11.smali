.class Lcom/metamoji/noteanytime/EditorActivity$11;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->pastePageFromDocuments(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$docIds:Ljava/util/List;

.field final synthetic val$documentManager:Lcom/metamoji/dvm/fw/DvmDocumentManager;

.field final synthetic val$errors:Ljava/util/Map;

.field final synthetic val$mergedDocId:Ljava/lang/String;

.field final synthetic val$resultArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/util/List;Ljava/util/List;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1172
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$docIds:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$resultArray:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$documentManager:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    iput-object p5, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$errors:Ljava/util/Map;

    iput-object p6, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$mergedDocId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1176
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$11$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$11$1;-><init>(Lcom/metamoji/noteanytime/EditorActivity$11;Ljava/lang/StringBuilder;)V

    .line 1183
    new-instance v2, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v2}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 1184
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    .line 1185
    new-instance v4, Lcom/metamoji/noteanytime/EditorActivity$11$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/metamoji/noteanytime/EditorActivity$11$2;-><init>(Lcom/metamoji/noteanytime/EditorActivity$11;Lcom/metamoji/nt/cabinet/cabinetWaitView;Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1195
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$docIds:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "docId"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGING_SUCCEEDED:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "result"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$resultArray:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 1201
    :goto_0
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$docIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1202
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$docIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "canceled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1204
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1205
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGING_CANCELED:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$resultArray:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1211
    :cond_0
    new-instance v6, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v6}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 1212
    iget-object v7, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$documentManager:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    invoke-virtual {v7, v3, v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v6

    .line 1214
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1215
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1216
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGING_FAILURED:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$resultArray:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1222
    :cond_1
    iget-object v6, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$documentManager:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    invoke-virtual {v6, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v6

    .line 1224
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1225
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_3

    .line 1231
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1232
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGING_FAILURED:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$resultArray:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1238
    :cond_3
    iget-object v7, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v7}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v7

    invoke-interface {v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/metamoji/nt/NtNoteController;->pastePageFromModelManager(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v7

    .line 1239
    sget-object v8, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v6, v8}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    if-eqz v7, :cond_4

    .line 1242
    iget-object v6, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$documentManager:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    invoke-virtual {v6, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v6

    .line 1243
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1244
    iget-object v8, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$errors:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1247
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGING_FAILURED:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$resultArray:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1251
    :cond_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1252
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGING_SUCCEEDED:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$resultArray:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1259
    :cond_5
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$11$3;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/noteanytime/EditorActivity$11$3;-><init>(Lcom/metamoji/noteanytime/EditorActivity$11;Lcom/metamoji/nt/cabinet/cabinetWaitView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
