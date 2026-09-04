.class Lcom/metamoji/un/text/UnTextUnit$51;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
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
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 12287
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$51;->this$0:Lcom/metamoji/un/text/UnTextUnit;

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

    .line 12287
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$51;->invoke(Ljava/util/List;)V

    return-void
.end method

.method public invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;)V"
        }
    .end annotation

    .line 12289
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$51;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0, p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$monTagChangedEvent(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V

    return-void
.end method
