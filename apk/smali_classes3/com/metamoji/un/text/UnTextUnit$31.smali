.class Lcom/metamoji/un/text/UnTextUnit$31;
.super Ljava/util/ArrayList;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->commandStrokePenStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/mazecclient/stroke/IStrokeInk;)V
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

    .line 6240
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$31;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$31;->val$ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6241
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getMainColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$31;->add(Ljava/lang/Object;)Z

    return-void
.end method
