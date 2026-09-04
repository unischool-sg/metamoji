.class Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$4;->arg$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$4;->arg$0:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->accessor$ConvertFromJavaKt$lambda4(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
