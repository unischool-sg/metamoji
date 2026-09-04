.class Lcom/metamoji/mazec/MazecIms$12;
.super Ljava/lang/Object;
.source "MazecIms.java"

# interfaces
.implements Lcom/metamoji/mazec/MazecIms$EventShooter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecIms;->clear()V
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

    .line 3830
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$12;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shoot(Lcom/metamoji/mazec/MazecEventListener;)V
    .locals 1

    .line 3833
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$12;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/MazecEventListener;->onContentsCleared(Lcom/metamoji/mazec/MazecIms;)V

    return-void
.end method
