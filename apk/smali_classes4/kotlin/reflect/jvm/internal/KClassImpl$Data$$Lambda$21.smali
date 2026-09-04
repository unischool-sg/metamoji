.class Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$21;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/KClassImpl;

.field private final arg$1:Ljava/lang/Class;

.field private final arg$2:Lkotlin/reflect/jvm/internal/impl/name/ClassId;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KClassImpl;Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$21;->arg$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$21;->arg$1:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$21;->arg$2:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$21;->arg$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$21;->arg$1:Ljava/lang/Class;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$21;->arg$2:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->accessor$KClassImpl$Data$lambda21(Lkotlin/reflect/jvm/internal/KClassImpl;Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
