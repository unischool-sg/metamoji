.class Lcom/metamoji/ui/dialog/DocumentListDialog$1;
.super Ljava/lang/Object;
.source "DocumentListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    iget-object v4, v4, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 164
    iget-object v4, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    iget-object v4, v4, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 165
    const-string v5, "driveId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 166
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    const-string v6, "docId"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getNotePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 169
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$1;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    iget-boolean v3, v3, Lcom/metamoji/ui/dialog/DocumentListDialog;->displayNoteNameOnly:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x2f

    .line 173
    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 175
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 178
    :cond_2
    const-string v3, "path"

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 186
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/dialog/DocumentListDialog$1$1;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/dialog/DocumentListDialog$1$1;-><init>(Lcom/metamoji/ui/dialog/DocumentListDialog$1;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    .line 197
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/DocumentListDialog$1$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/DocumentListDialog$1$2;-><init>(Lcom/metamoji/ui/dialog/DocumentListDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method
