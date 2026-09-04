.class Lcom/metamoji/forSchool/ScSchoolManager$2;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ScSchoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolManager;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager$2;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$2;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-static {v0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->-$$Nest$monCollaboUserPropertyChanged(Lcom/metamoji/forSchool/ScSchoolManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method

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

    .line 163
    check-cast p1, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager$2;->invoke(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method
