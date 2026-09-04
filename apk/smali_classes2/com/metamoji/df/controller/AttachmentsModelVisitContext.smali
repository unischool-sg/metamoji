.class public Lcom/metamoji/df/controller/AttachmentsModelVisitContext;
.super Lcom/metamoji/df/controller/ModelVisitContext;
.source "AttachmentsModelVisitContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private command:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

.field private replaceTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tickets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/ModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;)V

    .line 32
    iput-object p2, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->command:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    .line 33
    iput-object p3, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->replaceTable:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/ModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;)V

    .line 25
    iput-object p2, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->command:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    .line 26
    iput-object p3, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->tickets:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getCommand()Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->command:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    return-object v0
.end method

.method public getReplaceTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->replaceTable:Ljava/util/Map;

    return-object v0
.end method

.method public getTickets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->tickets:Ljava/util/Set;

    return-object v0
.end method

.method public setCommand(Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->command:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    return-void
.end method

.method public setReplaceTable(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->replaceTable:Ljava/util/Map;

    return-void
.end method

.method public setTickets(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->tickets:Ljava/util/Set;

    return-void
.end method
