.class public Lcom/metamoji/nt/NtRetainData;
.super Ljava/lang/Object;
.source "NtRetainData.java"


# static fields
.field public static final KEY_DOCUMENTEDITOR:Ljava/lang/String; = "documentEditor"

.field public static final KEY_SOFTINPUTVISIBLE:Ljava/lang/String; = "softInputVisible"

.field public static final KEY_TEXTCURSORS:Ljava/lang/String; = "textCursors"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtRetainData;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/nt/NtRetainData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/nt/NtRetainData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/nt/NtRetainData;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
