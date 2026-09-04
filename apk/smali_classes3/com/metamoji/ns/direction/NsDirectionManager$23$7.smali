.class Lcom/metamoji/ns/direction/NsDirectionManager$23$7;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1613
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$7;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1616
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->startPersonalModeByAttentionUser()V

    return-void
.end method
