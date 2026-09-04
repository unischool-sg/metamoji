.class Lcom/metamoji/un/text/UnTextUnit$14$1;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/cm/IAction1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IAction1<",
        "Ljava/util/List<",
        "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/text/UnTextUnit$14;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit$14;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3510
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$14$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic perform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3510
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$14$1;->perform(Ljava/util/List;)V

    return-void
.end method

.method public perform(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;)V"
        }
    .end annotation

    .line 3528
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$14$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$14;

    iget-object p1, p1, Lcom/metamoji/un/text/UnTextUnit$14;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    return-void
.end method
