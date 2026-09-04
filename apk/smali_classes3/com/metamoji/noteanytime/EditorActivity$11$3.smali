.class Lcom/metamoji/noteanytime/EditorActivity$11$3;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

.field final synthetic val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$11;Lcom/metamoji/nt/cabinet/cabinetWaitView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1259
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1262
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 1264
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$11;->val$errors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1277
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1268
    iget-object v1, v1, Lcom/metamoji/noteanytime/EditorActivity$11;->val$errors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1269
    iget-object v4, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iget-object v4, v4, Lcom/metamoji/noteanytime/EditorActivity$11;->val$errors:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s : %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1272
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGE_NOTES_DLG_TITLE:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    goto :goto_2

    .line 1274
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1277
    iget-object v1, v1, Lcom/metamoji/noteanytime/EditorActivity$11;->val$resultArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1278
    const-string v4, "docId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1279
    const-string/jumbo v5, "result"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1280
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity$11$3;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iget-object v5, v5, Lcom/metamoji/noteanytime/EditorActivity$11;->val$documentManager:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1282
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1283
    const-string v5, "\n%s : %s"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1286
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGE_NOTES_DLG_TITLE:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1290
    :goto_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$11$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$11$3$1;-><init>(Lcom/metamoji/noteanytime/EditorActivity$11$3;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method
