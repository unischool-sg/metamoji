.class Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer$$Lambda$5;->arg$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer$$Lambda$5;->arg$0:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->accessor$ReflectionObjectRenderer$lambda5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
