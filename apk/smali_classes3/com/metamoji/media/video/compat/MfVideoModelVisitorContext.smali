.class public final Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;
.super Lcom/metamoji/df/controller/ModelVisitContext;
.source "MfVideoModelVisitorContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR!\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;",
        "Lcom/metamoji/df/controller/ModelVisitContext;",
        "visitor",
        "Lcom/metamoji/df/controller/IModelVisitor;",
        "command",
        "Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;",
        "<init>",
        "(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;)V",
        "getCommand",
        "()Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;",
        "tickets",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "getTickets",
        "()Ljava/util/HashSet;",
        "VisitorCommand",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final command:Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

.field private final tickets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;)V
    .locals 1

    const-string/jumbo v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/ModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;)V

    iput-object p2, p0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;->command:Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    .line 11
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;->tickets:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final getCommand()Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;->command:Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    return-object v0
.end method

.method public final getTickets()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;->tickets:Ljava/util/HashSet;

    return-object v0
.end method
