.class Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$0;->arg$0:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$0;->arg$0:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->accessor$ConvertFromJavaKt$lambda0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
