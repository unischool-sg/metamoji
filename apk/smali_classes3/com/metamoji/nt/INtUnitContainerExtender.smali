.class public interface abstract Lcom/metamoji/nt/INtUnitContainerExtender;
.super Ljava/lang/Object;
.source "INtUnitContainerExtender.java"


# virtual methods
.method public abstract commandsForChildUnit(Lcom/metamoji/nt/NtUnitController;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtUnitController;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitCommandInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z
.end method
