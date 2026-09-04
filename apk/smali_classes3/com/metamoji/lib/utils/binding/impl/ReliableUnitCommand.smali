.class public final Lcom/metamoji/lib/utils/binding/impl/ReliableUnitCommand;
.super Lcom/metamoji/lib/utils/UnitCommand;
.source "ReliableCommand.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007B\u0017\u0008\u0016\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t\u00a2\u0006\u0004\u0008\u0005\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/ReliableUnitCommand;",
        "Lcom/metamoji/lib/utils/UnitCommand;",
        "rc",
        "Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;",
        "",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;)V",
        "()V",
        "fn",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;-><init>()V

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/ReliableUnitCommand;-><init>(Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;)V

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/ReliableCommand<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 66
    check-cast p1, Lcom/metamoji/lib/utils/ICommand;

    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/UnitCommand;-><init>(Lcom/metamoji/lib/utils/ICommand;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/ReliableUnitCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/utils/binding/impl/ReliableUnitCommand$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/ReliableUnitCommand;-><init>(Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;)V

    return-void
.end method

.method static final _init_$lambda$0(Lkotlin/jvm/functions/Function0;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
