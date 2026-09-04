.class Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;
.super Ljava/lang/Object;
.source "ShareObjectInfoView.java"

# interfaces
.implements Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->action(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 289
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$partsArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$partsArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;

    .line 292
    iget-boolean v2, v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_isCollaboKey:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_key:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_key:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_key:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_name:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$partsArray:Ljava/util/List;

    new-instance v0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$PartsComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$PartsComparator;-><init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView-IA;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    new-instance p1, Lcom/metamoji/ui/dialog/ShareObjectInfoView;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v0

    .line 312
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$partsArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    move-object v4, v3

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;

    if-eqz v1, :cond_4

    .line 313
    iget-object v6, v5, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_dateTime:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v3, :cond_3

    iget-object v6, v5, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_name:Ljava/lang/String;

    .line 314
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_3
    if-eqz v4, :cond_4

    iget-object v6, v5, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_key:Ljava/lang/String;

    .line 315
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 318
    :cond_4
    iget-object v4, v5, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_key:Ljava/lang/String;

    .line 319
    iget-object v1, v5, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_name:Ljava/lang/String;

    .line 320
    iget-object v3, v5, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_dateTime:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 324
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 325
    sget v5, Lcom/metamoji/noteanytime/R$string;->NickName_UnKnown:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v0, :cond_6

    .line 330
    const-string v5, "***"

    invoke-virtual {p1, v5, v3}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 332
    :cond_6
    invoke-virtual {p1, v1, v3}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_1

    .line 336
    :cond_7
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;->val$editor:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ShareObjectInfoView"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
