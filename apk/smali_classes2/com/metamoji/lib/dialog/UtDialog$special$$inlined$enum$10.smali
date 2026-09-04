.class public final Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;
.super Ljava/lang/Object;
.source "UtDialogArgumentDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/UtDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtDialogArgumentDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtDialogArgumentDelegate.kt\ncom/metamoji/lib/dialog/UtBundleDelegate$enum$2\n*L\n1#1,254:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;-><init>()V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 176
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;->invoke(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
