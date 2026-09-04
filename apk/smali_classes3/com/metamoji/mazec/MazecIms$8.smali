.class Lcom/metamoji/mazec/MazecIms$8;
.super Ljava/lang/Object;
.source "MazecIms.java"

# interfaces
.implements Lcom/metamoji/mazec/MazecIms$EventShooter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecIms;->setLineColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 3333
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$8;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shoot(Lcom/metamoji/mazec/MazecEventListener;)V
    .locals 2

    .line 3336
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$8;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmPrefs(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    invoke-interface {p1, v0, v1}, Lcom/metamoji/mazec/MazecEventListener;->onInputLineColorChanged(Lcom/metamoji/mazec/MazecIms;I)V

    return-void
.end method
