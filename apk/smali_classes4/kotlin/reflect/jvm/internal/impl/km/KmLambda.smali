.class public final Lkotlin/reflect/jvm/internal/impl/km/KmLambda;
.super Ljava/lang/Object;
.source "Nodes.kt"


# instance fields
.field public function:Lkotlin/reflect/jvm/internal/impl/km/KmFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setFunction(Lkotlin/reflect/jvm/internal/impl/km/KmFunction;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmLambda;->function:Lkotlin/reflect/jvm/internal/impl/km/KmFunction;

    return-void
.end method
