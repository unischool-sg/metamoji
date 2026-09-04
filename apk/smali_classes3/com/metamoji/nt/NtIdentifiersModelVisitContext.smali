.class public Lcom/metamoji/nt/NtIdentifiersModelVisitContext;
.super Lcom/metamoji/df/controller/ModelVisitContext;
.source "NtIdentifiersModelVisitContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;
    }
.end annotation


# instance fields
.field private _command:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

.field private _idTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewID:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/ModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;)V

    .line 42
    iput-object p3, p0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->_command:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->_idTable:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->_command:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    return-object v0
.end method

.method public getIdTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->_idTable:Ljava/util/Map;

    return-object v0
.end method
