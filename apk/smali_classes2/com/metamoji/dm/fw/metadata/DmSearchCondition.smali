.class public abstract Lcom/metamoji/dm/fw/metadata/DmSearchCondition;
.super Ljava/lang/Object;
.source "DmSearchCondition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createCondition(Ljava/util/ArrayList;Lcom/j256/ormlite/stmt/Where;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/j256/ormlite/stmt/SelectArg;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
