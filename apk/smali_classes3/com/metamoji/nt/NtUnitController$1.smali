.class Lcom/metamoji/nt/NtUnitController$1;
.super Ljava/lang/Object;
.source "NtUnitController.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
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
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController$1;->this$0:Lcom/metamoji/nt/NtUnitController;

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

    .line 260
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController$1;->invoke(Ljava/util/List;)V

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

    if-eqz p1, :cond_3

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/CtEventTagChanged;

    .line 264
    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController$1;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 265
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController$1;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/ctold/CtEventTagChanged;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$1;->this$0:Lcom/metamoji/nt/NtUnitController;

    iget-object v1, v0, Lcom/metamoji/nt/NtUnitController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    goto :goto_0

    :cond_3
    return-void
.end method
