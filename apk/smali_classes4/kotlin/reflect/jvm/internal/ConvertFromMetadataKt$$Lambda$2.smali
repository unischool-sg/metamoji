.class Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field private final arg$0:Ljava/lang/ClassLoader;

.field private final arg$1:Lkotlin/reflect/jvm/internal/TypeParameterTable;

.field private final arg$2:Lkotlin/jvm/functions/Function0;

.field private final arg$3:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->arg$0:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->arg$1:Lkotlin/reflect/jvm/internal/TypeParameterTable;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->arg$2:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->arg$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->arg$0:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->arg$1:Lkotlin/reflect/jvm/internal/TypeParameterTable;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->arg$2:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->arg$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v5, p2

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->accessor$ConvertFromMetadataKt$lambda2(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;)Lkotlin/reflect/KTypeProjection;

    move-result-object p1

    return-object p1
.end method
