.class Lcom/metamoji/nt/NtPageController$2;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->init(Lcom/metamoji/df/controller/ControllerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Ljava/util/List<",
        "Lcom/metamoji/ctold/CtEventTagChanged;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 982
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$2;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 982
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController$2;->invoke(Ljava/util/List;)V

    return-void
.end method

.method public invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 985
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/CtEventTagChanged;

    .line 986
    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController$2;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController$2;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->-$$Nest$fget_mediaType(Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    goto :goto_0

    :cond_1
    return-void
.end method
