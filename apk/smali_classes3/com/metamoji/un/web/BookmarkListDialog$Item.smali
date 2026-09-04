.class Lcom/metamoji/un/web/BookmarkListDialog$Item;
.super Ljava/lang/Object;
.source "BookmarkListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/web/BookmarkListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field private _model:Lcom/metamoji/df/model/IModel;

.field final synthetic this$0:Lcom/metamoji/un/web/BookmarkListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/df/model/IModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method


# virtual methods
.method public getModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/web/BookmarkSettings;->getName(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/web/BookmarkSettings;->getUrl(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFolder()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/web/BookmarkSettings;->isBookmarkFolder(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, p1}, Lcom/metamoji/un/web/BookmarkSettings;->setName(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$Item;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, p1}, Lcom/metamoji/un/web/BookmarkSettings;->setUrl(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method
