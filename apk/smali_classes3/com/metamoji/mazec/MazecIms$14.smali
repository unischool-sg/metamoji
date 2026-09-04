.class Lcom/metamoji/mazec/MazecIms$14;
.super Ljava/lang/Object;
.source "MazecIms.java"

# interfaces
.implements Lcom/metamoji/mazec/MazecIms$EventShooterWithParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecIms;->fireStrokeUpdateEvent(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private added:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;"
        }
    .end annotation
.end field

.field private removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3967
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$14;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3968
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$14;->added:Ljava/util/List;

    .line 3969
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$14;->removed:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs setEventParams([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 3977
    aget-object v0, p1, v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms$14;->added:Ljava/util/List;

    const/4 v0, 0x1

    .line 3978
    aget-object p1, p1, v0

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$14;->removed:Ljava/util/List;

    return-void
.end method

.method public shoot(Lcom/metamoji/mazec/MazecEventListener;)V
    .locals 3

    .line 3972
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$14;->this$0:Lcom/metamoji/mazec/MazecIms;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$14;->added:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms$14;->removed:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/mazec/MazecEventListener;->onStrokeUpdated(Lcom/metamoji/mazec/MazecIms;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
