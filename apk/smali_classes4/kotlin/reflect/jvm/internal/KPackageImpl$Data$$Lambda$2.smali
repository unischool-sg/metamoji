.class Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

.field private final arg$1:Lkotlin/reflect/jvm/internal/KPackageImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;Lkotlin/reflect/jvm/internal/KPackageImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;->arg$1:Lkotlin/reflect/jvm/internal/KPackageImpl;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;->arg$1:Lkotlin/reflect/jvm/internal/KPackageImpl;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->accessor$KPackageImpl$Data$lambda2(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;Lkotlin/reflect/jvm/internal/KPackageImpl;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
