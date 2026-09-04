.class Lcom/metamoji/nt/NtUnitController$2;
.super Ljava/lang/Object;
.source "NtUnitController.java"

# interfaces
.implements Lcom/metamoji/cm/CmUtils$ICmPredicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitController;->commandsForSelectedUnits()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/CmUtils$ICmPredicator<",
        "Lcom/metamoji/nt/NtUnitCommandInfo;",
        ">;"
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

    .line 357
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController$2;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public predicate(Lcom/metamoji/nt/NtUnitCommandInfo;)Z
    .locals 0

    .line 360
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitCommandInfo;->isValidOnSingleSelection()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic predicate(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 357
    check-cast p1, Lcom/metamoji/nt/NtUnitCommandInfo;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController$2;->predicate(Lcom/metamoji/nt/NtUnitCommandInfo;)Z

    move-result p1

    return p1
.end method
