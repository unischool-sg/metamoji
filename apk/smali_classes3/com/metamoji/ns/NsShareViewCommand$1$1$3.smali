.class Lcom/metamoji/ns/NsShareViewCommand$1$1$3;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsShareViewCommand$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsShareViewCommand$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1$3;->this$1:Lcom/metamoji/ns/NsShareViewCommand$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 0

    .line 181
    const-string p1, "[ShareViewCommand] --- task clear."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 182
    sput-object p1, Lcom/metamoji/ns/NsShareViewCommand;->s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    return-void
.end method
